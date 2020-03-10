#pragma once

#include <QObject>

namespace quick {
    namespace Vtk {

        class Object : public QObject {
            Q_OBJECT
        public:
            enum class Type {
                Prop,
                Algorithm,
                Widget,
                Other
            };
        private:
            Type m_type;
        public:
            Object(Type);
            auto getType() -> Type;
        };
    }
}
